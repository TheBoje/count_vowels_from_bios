void main() {
  char s[] = "HELLO";
  int i = 0, c = 0;
  for (i = 0; i < sizeof(s); i++) {
    char t = s[i];
    if (t == 'a' || t == 'A' || t == 'e' || t == 'E' || t == 'i' || t == 'I' ||
        t == 'o' || t == 'O' || t == 'u' || t == 'U' || t == 'y' || t == 'Y') {
      c += 1;
    }
    __asm__("int $0x10" ::"a"((0x0e << 8) | s[i]));
  }
  __asm__("int $0x10" ::"a"((0x0e << 8) | (c / 10) + '0'));
  __asm__("int $0x10" ::"a"((0x0e << 8) | (c % 10) + '0'));
  while (1) {
    __asm__("hlt");
  };
}
