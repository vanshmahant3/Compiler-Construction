# Compiler Construction Lab (CC Lab)

**Student Details:**
- **Name:** Vansh Mahant
- **PRN:** 24070521038
- **Semester:** 5th Semester
- **Section:** A
- **Subject:** Compiler Construction / Compiler Design Practical

---

## 📚 Practical Index

| Practical | Directory | Description | Tools Used |
|---|---|---|---|
| **Practical 1** | `Compiler_Design_Practical/Prac_1_cc/` | Count words, numbers, and words starting with 'A' | `LEX` |
| **Practical 2** | `Compiler_Design_Practical/Prac_2_cc/` | Lexical analyzer and token classification | `LEX` |
| **Practical 3** | `Compiler_Design_Practical/Prac_3_cc/` | Count lines, spaces, words, keywords, identifiers, and comments in a C program | `LEX` |
| **Practical 4** | `Compiler_Design_Practical/Prac_4_cc/` | Recognition and validation of arithmetic expressions | `LEX`, `YACC` |
| **Practical 5** | `Compiler_Design_Practical/Prac_5_cc/` | Grammar and syntax verification for expressions | `LEX`, `YACC` |
| **Practical 6** | `Compiler_Design_Practical/Prac_6_cc/` | Decimal to Hexadecimal conversion from input file | `LEX` |
| **Practical 7** | `Compiler_Design_Practical/Prac_7_cc/` | Recognition and validation of URLs ending with `.com` | `LEX` |
| **Practical 8** | `Compiler_Design_Practical/Prac_8_cc/` | Postfix expression evaluation using stack | `LEX` |
| **Practical 9** | `Compiler_Design_Practical/Prac_9_cc/` | Postfix expression evaluation calculator | `LEX`, `YACC` |
| **Practical 10** | `Compiler_Design_Practical/Prac_10_cc/` | Three Address Code (TAC) intermediate code generation | `LEX`, `YACC` |

---

## 🛠️ Requirements & Prerequisites

Ensure you have the following tools installed on your system:
- **Flex / Lex**
- **Bison / Yacc**
- **GCC / Clang**

On macOS (using Homebrew) or Linux:
```bash
# macOS
brew install flex bison
xcode-select --install

# Ubuntu/Debian Linux
sudo apt update
sudo apt install flex bison gcc
```

---

## 🚀 How to Compile & Run

### 1. For Lex-Only Practicals (Practicals 1, 2, 3, 6, 7, 8)

```bash
cd Compiler_Design_Practical/Prac_<N>_cc

# Step 1: Generate C code from lex specification
flex <filename>.l   # or: lex <filename>.l

# Step 2: Compile the generated C file
gcc lex.yy.c -o run

# Step 3: Execute the binary
./run
```

*(For Practicals 6, 7, and 8, ensure `input.txt` is present in the current working directory).*

---

### 2. For Lex + Yacc Practicals (Practicals 4, 5, 9, 10)

```bash
cd Compiler_Design_Practical/Prac_<N>_cc

# Step 1: Generate parser C and header files from Yacc grammar
bison -d <filename>.y   # or: yacc -d <filename>.y

# Step 2: Generate scanner C code from Lex specification
flex <filename>.l       # or: lex <filename>.l

# Step 3: Compile both C files together
gcc lex.yy.c y.tab.c -o run

# Step 4: Execute the binary
./run
```

---

## 📂 Project Structure

```
cc lab/
├── .gitignore
├── README.md
└── Compiler_Design_Practical/
    ├── Prac_1_cc/
    │   └── p1.l
    ├── Prac_2_cc/
    │   └── p2.l
    ├── Prac_3_cc/
    │   └── p3.l
    ├── Prac_4_cc/
    │   ├── p4.l
    │   └── p4.y
    ├── Prac_5_cc/
    │   ├── 5.l
    │   └── 5.y
    ├── Prac_6_cc/
    │   ├── 6.l
    │   └── input.txt
    ├── Prac_7_cc/
    │   ├── 7.l
    │   └── input.txt
    ├── Prac_8_cc/
    │   ├── 8.l
    │   └── input.txt
    ├── Prac_9_cc/
    │   ├── 9.l
    │   └── 9.y
    └── Prac_10_cc/
        ├── 10.l
        └── 10.y
```

---

