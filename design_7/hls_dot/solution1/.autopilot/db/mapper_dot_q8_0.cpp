#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
struct __cosim_s2__ { char data[2]; };
extern "C" float dot_q8_0(int, Byte<8>*, Byte<2>*, Byte<8>*, Byte<2>*);
extern "C" float apatb_dot_q8_0_hw(int __xlx_apatb_param_nb, volatile void * __xlx_apatb_param_xq, volatile void * __xlx_apatb_param_xd, volatile void * __xlx_apatb_param_yq, volatile void * __xlx_apatb_param_yd) {
using hls::sim::createStream;
  // Collect __xlx_xq__tmp_vec
std::vector<Byte<8>> __xlx_xq__tmp_vec;
for (size_t i = 0; i < 608; ++i){
__xlx_xq__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_xq)[i]);
}
  int __xlx_size_param_xq = 608;
  int __xlx_offset_param_xq = 0;
  int __xlx_offset_byte_param_xq = 0*8;
  // Collect __xlx_xd__tmp_vec
std::vector<Byte<2>> __xlx_xd__tmp_vec;
for (size_t i = 0; i < 152; ++i){
__xlx_xd__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_xd)[i]);
}
  int __xlx_size_param_xd = 152;
  int __xlx_offset_param_xd = 0;
  int __xlx_offset_byte_param_xd = 0*2;
  // Collect __xlx_yq__tmp_vec
std::vector<Byte<8>> __xlx_yq__tmp_vec;
for (size_t i = 0; i < 608; ++i){
__xlx_yq__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_yq)[i]);
}
  int __xlx_size_param_yq = 608;
  int __xlx_offset_param_yq = 0;
  int __xlx_offset_byte_param_yq = 0*8;
  // Collect __xlx_yd__tmp_vec
std::vector<Byte<2>> __xlx_yd__tmp_vec;
for (size_t i = 0; i < 152; ++i){
__xlx_yd__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_yd)[i]);
}
  int __xlx_size_param_yd = 152;
  int __xlx_offset_param_yd = 0;
  int __xlx_offset_byte_param_yd = 0*2;
  // DUT call
  float ap_return = dot_q8_0(__xlx_apatb_param_nb, __xlx_xq__tmp_vec.data(), __xlx_xd__tmp_vec.data(), __xlx_yq__tmp_vec.data(), __xlx_yd__tmp_vec.data());
// print __xlx_apatb_param_xq
for (size_t i = 0; i < __xlx_size_param_xq; ++i) {
((Byte<8>*)__xlx_apatb_param_xq)[i] = __xlx_xq__tmp_vec[__xlx_offset_param_xq+i];
}
// print __xlx_apatb_param_xd
for (size_t i = 0; i < __xlx_size_param_xd; ++i) {
((Byte<2>*)__xlx_apatb_param_xd)[i] = __xlx_xd__tmp_vec[__xlx_offset_param_xd+i];
}
// print __xlx_apatb_param_yq
for (size_t i = 0; i < __xlx_size_param_yq; ++i) {
((Byte<8>*)__xlx_apatb_param_yq)[i] = __xlx_yq__tmp_vec[__xlx_offset_param_yq+i];
}
// print __xlx_apatb_param_yd
for (size_t i = 0; i < __xlx_size_param_yd; ++i) {
((Byte<2>*)__xlx_apatb_param_yd)[i] = __xlx_yd__tmp_vec[__xlx_offset_param_yd+i];
}
return ap_return;
}
