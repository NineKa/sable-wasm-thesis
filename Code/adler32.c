uint32_t adler32(void const *buffer_, size_t length_) {
  uint8_t const *buffer = (uint8_t const *)buffer_;
  uint32_t a = 1;
  uint32_t b = 0;
  for (size_t i = 0; i < length_; ++i) {
    a = (a + buffer[i]) % 65521;
    b = (a + b) % 65521;
  }
  return (b << 16) | a;
}