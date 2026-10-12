#!/bin/bash
# Collects the key numbers of every design into results.md.
# Latency columns come from the synthesis estimate: n=896 (28 blocks) and n=4864 (152 blocks).
cd "$(dirname "$0")"
out=results.md

{
echo "| design | target (ns) | est (ns) | slack (ns) | lat n=896 (cyc) | lat n=4864 (cyc) | loop II | DSP | LUT | FF | BRAM | time n=896 @target (us) | LUT x cyc n=896 (M) | LUT x cyc n=4864 (M) | cosim | cosim lat min/avg/max | cosim total (cyc) | tests | max abs err | max rel err (%) |"
echo "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|"
for d in $(ls -d design_* | sort -V); do
    rpt=$d/hls_dot/solution1/syn/report/dot_q8_0_csynth.rpt
    cos=$d/hls_dot/solution1/sim/report/dot_q8_0_cosim.rpt
    log=$d/run.log

    tgt=n/a; est=n/a; slack=n/a; lmin=n/a; lmax=n/a; ii=n/a; dsp=n/a; lut=n/a; ff=n/a; bram=n/a
    if [ -f "$rpt" ]; then
        read tgt est unc < <(awk -F'|' '/\|ap_clk/ {for(i=3;i<=5;i++) gsub(/ ns| /,"",$i); print $3, $4, $5; exit}' "$rpt")
        slack=$(awk -v t="$tgt" -v e="$est" -v u="$unc" 'BEGIN{printf "%.3f", t-u-e}')
        read lmin lmax < <(awk -F'|' '/\+ Latency:/ {f=1} f && /^ *\| *[0-9]+\|/ {gsub(/ /,"",$2); gsub(/ /,"",$3); print $2, $3; exit}' "$rpt")
        ii=$(awk -F'|' '$2 ~ /^ *[-+] [A-Z_0-9]+ *$/ && NF >= 9 {n=$2; gsub(/^ *[-+] | *$/,"",n); i=$6; gsub(/ /,"",i); printf "%s=%s ", n, i}' "$rpt")
        [ -z "$ii" ] && ii=n/a
        read bram dsp ff lut < <(awk -F'|' '/^\|Total/ {gsub(/ /,"",$3); gsub(/ /,"",$4); gsub(/ /,"",$5); gsub(/ /,"",$6); print $3, $4, $5, $6; exit}' "$rpt")
    fi
    us=n/a; a1=n/a; a2=n/a
    if [ "$lmin" != n/a ] && [ "$tgt" != n/a ]; then
        us=$(awk -v c="$lmin" -v p="$tgt" 'BEGIN{printf "%.2f", c*p/1000}')
        a1=$(awk -v c="$lmin" -v l="$lut" 'BEGIN{printf "%.2f", c*l/1e6}')
        a2=$(awk -v c="$lmax" -v l="$lut" 'BEGIN{printf "%.2f", c*l/1e6}')
    fi

    cs=n/a; cl=n/a; ct=n/a
    if [ -f "$cos" ]; then
        read cs cmin cavg cmax ct < <(awk -F'|' '/Verilog/ {for(i=2;i<=10;i++) gsub(/ /,"",$i); print $3, $4, $5, $6, $10; exit}' "$cos")
        cl="$cmin/$cavg/$cmax"
    fi

    tests=n/a; ea=n/a; er=n/a
    if [ -f "$log" ]; then
        tests=$(grep -m1 " tests, " "$log" | sed 's/^ *//')
        ea=$(grep -m1 "max absolute error" "$log" | awk '{print $NF}')
        er=$(grep -m1 "max relative error" "$log" | awk '{print $(NF-1)}')
    fi
    echo "| $d | $tgt | $est | $slack | $lmin | $lmax | $ii | $dsp | $lut | $ff | $bram | $us | $a1 | $a2 | $cs | $cl | $ct | $tests | $ea | $er |"
done
} > "$out"

cat "$out"
