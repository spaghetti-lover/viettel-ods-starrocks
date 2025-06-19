# Xây dựng ODS phục vụ cho report dữ liệu bán lẻ real-time


Dự án này được dùng để so sánh với ClickHouse: https://github.com/spaghetti-lover/viettel-ods
## Cách chạy:
**Điều kiện**: Cài đặt Docker và docker-compose

**Bước 1: Clone dự án**:
1. Mở terminal
2. Clone dự án:
```
https://github.com/spaghetti-lover/viettel-ods-starrocks.git
```
**Bước 2: Vào dự án**
1. Vào thư mục gốc của dự án:
```
cd viettel-ods-starrocks
```
**Bước 3: Chạy Docker Containers**
1. Chạy file docker-compose:
```
docker-compose up
```
**Bước 4: Check các service khởi tạo**
1. Trong quá trình khởi động các service, check log để xem các service khởi động thành công chưa
2. Chú ý tới `airflow-init` và `debezium-init` containers. Hai cái này sẽ tắt khi nào chạy xong
3. Đảm bảo các service còn lại chạy thành công

**Bước 5: Truy cập vào các service**
- **Airflow UI:** `http://localhost:13005` username:`airflow`, password:`airflow`
- **PostgreSQL:** port:`65432`, username:`postgres`, password:`postgres`
- **Debezium UI:** `http://localhost:8085` _(authentication not required)_
- **Kafka UI:** `http://localhost:8095/` _(authentication not required)_

