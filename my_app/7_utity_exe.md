# BỘ ĐỀ LUYỆN TƯ DUY LẬP TRÌNH DART

## PHẦN 1: XỬ LÝ CHUỖI & ĐỊNH DẠNG (STRING MANIPULATION)

### Bài 1: Chuẩn hóa tên người dùng

**Mô tả:** Người dùng thường nhập tên cẩu thả (thừa khoảng trắng, viết hoa thường lộn xộn). Hãy viết hàm để "làm đẹp" tên.

- **Input:** `"  nguYễn   vĂn   A  "`
- **Output:** `"Nguyễn Văn A"`
- **Yêu cầu:**
  1.  Xóa khoảng trắng thừa ở đầu, cuối và giữa các từ.
  2.  Chữ cái đầu của mỗi từ viết hoa, các chữ còn lại viết thường.

### Bài 2: Kiểm tra mật khẩu mạnh (Password Validator)

**Mô tả:** Viết hàm kiểm tra xem một chuỗi mật khẩu có đủ mạnh hay không.

- **Input:** Một chuỗi ký tự `password`.
- **Output:** `true` hoặc `false` (kèm thông báo lỗi nếu cần in ra console).
- **Điều kiện bắt buộc:**
  1.  Độ dài ít nhất 8 ký tự.
  2.  Chứa ít nhất 1 chữ hoa.
  3.  Chứa ít nhất 1 chữ thường.
  4.  Chứa ít nhất 1 số.
  5.  Chứa ít nhất 1 ký tự đặc biệt (ví dụ: `@`, `#`, `&`...).

### Bài 3: Kiểm tra từ đảo (Anagram)

**Mô tả:** Hai từ được gọi là Anagram nếu chúng được tạo ra bởi cùng các ký tự giống nhau (chỉ khác thứ tự).

- **Input:** Hai chuỗi `s1` và `s2`.
- **Output:** `true` nếu là Anagram, ngược lại `false`.
- **Ví dụ:**
  - `"listen"` và `"silent"` -> `true`
  - `"hello"` và `"world"` -> `false`

---

## PHẦN 2: XỬ LÝ MẢNG & DANH SÁCH (LIST & ARRAY)

### Bài 4: Tìm số lớn thứ hai (Second Largest)

**Mô tả:** Tìm số lớn thứ hai trong một danh sách số nguyên mà **không dùng hàm sort()** có sẵn.

- **Input:** `[10, 5, 20, 20, 4, 8]`
- **Output:** `10` (Lưu ý: Nếu số lớn nhất xuất hiện nhiều lần, số lớn thứ hai phải bé hơn số lớn nhất).

### Bài 5: Di chuyển số 0 (Move Zeros)

**Mô tả:** Cho một mảng số nguyên. Hãy di chuyển tất cả số `0` về cuối mảng trong khi vẫn giữ nguyên thứ tự của các số khác không phải là 0.

- **Input:** `[0, 1, 0, 3, 12]`
- **Output:** `[1, 3, 12, 0, 0]`

### Bài 6: Tìm phần tử còn thiếu

**Mô tả:** Cho một danh sách chứa các số từ `1` đến `n`. Tuy nhiên, có một số bị thiếu. Hãy tìm số đó.

- **Input:** Một list `[1, 2, 4, 6, 3, 7, 8]` (Ở đây n=8, thiếu số 5).
- **Output:** `5`
- **Gợi ý:** Có thể dùng công thức tổng dãy số hoặc dùng vòng lặp.

---

## PHẦN 3: CẤU TRÚC DỮ LIỆU & LOGIC (MAP & SET)

### Bài 7: Nhóm sản phẩm theo danh mục (Grouping Data)

**Mô tả:** Đây là bài toán cực kỳ phổ biến trong E-commerce. Cho một danh sách các Object `Product` (gồm `name`, `category`, `price`). Hãy chuyển đổi nó thành một `Map` để nhóm các sản phẩm cùng loại lại với nhau.

- **Input:**
  ```dart
  [
    Product('Laptop', 'Electronic'),
    Product('Ao thun', 'Fashion'),
    Product('Dien thoai', 'Electronic'),
    Product('Giay', 'Fashion')
  ]
  ```
- **Output:** Một Map có dạng:
  ```dart
  {
    'Electronic': [Product('Laptop'), Product('Dien thoai')],
    'Fashion': [Product('Ao thun'), Product('Giay')]
  }
  ```

### Bài 8: Tìm giao của hai danh sách (Intersection)

**Mô tả:** Cho 2 danh sách số nguyên. Hãy tìm ra các số xuất hiện ở cả 2 danh sách đó (kết quả không được trùng lặp).

- **Input:** `list1 = [1, 2, 2, 1]`, `list2 = [2, 2]`
- **Output:** `[2]`
- **Gợi ý:** Sử dụng `Set` để tối ưu hiệu năng.

---

## PHẦN 4: THUẬT TOÁN THỰC TẾ (ADVANCED)

### Bài 9: Tính số ngày công (Working Days Calculator)

**Mô tả:** Viết hàm tính khoảng cách giữa 2 ngày, nhưng **loại bỏ Thứ 7 và Chủ Nhật**.

- **Input:** `startDate` và `endDate`.
- **Output:** Số ngày làm việc (Interger).
- **Ví dụ:** Từ Thứ 6 tuần này đến Thứ 2 tuần sau là 4 ngày thực tế, nhưng chỉ có 2 ngày công (Thứ 6 và Thứ 2).

### Bài 10: Chuyển đổi số thành chữ đọc tiền (Number to Words)

**Mô tả:** Viết hàm đọc số tiền thành chữ Tiếng Việt (đơn giản hóa cho phạm vi dưới 1 tỷ).

- **Input:** `1250000`
- **Output:** `"Một triệu hai trăm năm mươi nghìn"`
- **Gợi ý:** Chia nhỏ số thành các cụm 3 chữ số để xử lý.

---

### YÊU CẦU NỘP BÀI (Gợi ý cho giảng viên)

1.  **Code sạch (Clean Code):** Tên biến, tên hàm phải đặt bằng Tiếng Anh, rõ nghĩa (ví dụ: `validatePassword` thay vì `checkPass`).
2.  **Xử lý lỗi:** Phải tính đến trường hợp Input bị `null`, `rỗng`, hoặc sai định dạng.
3.  **Tối ưu:** Khuyến khích sinh viên giải thích độ phức tạp của thuật toán (Code chạy 1 vòng lặp hay 2 vòng lặp lồng nhau?).
