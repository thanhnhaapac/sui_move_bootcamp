// Hoàn thiện đoạn code để có thể publish được
module lesson5::FT_TOKEN {
    struct FT_TOKEN { }

    fun init(witness: FT_TOKEN, ctx: &mut TxContext) {
        let (treasury_cap, metadata) = coin::create_currency(

        );
    }

    // hoàn thiện function để có thể tạo ra 10_000 token cho mỗi lần mint, và mỗi owner của token mới có quyền mint
    public fun mint() {

    }

    // Hoàn thiện function sau để user hoặc ai cũng có quyền tự đốt đi số token đang sở hữu
    public entry fun burn_token() {

    }

    // Hoàn thiện function để chuyển token từ người này sang người khác.
    public entry fun transfer_token() {

        // sau đó khởi 1 Event, dùng để tạo 1 sự kiện khi function transfer được thực thi
    }

    // Hoàn thiện function để chia Token Object thành một object khác dùng cho việc transfer
    // gợi ý sử dụng coin:: framework
    public entry fun split_token() {

    }

    // Viết thêm function để token có thể update thông tin sau
    public entry fun update_name() {}
    public entry fun update_description() {}
    public entry fun update_symbol() {}
    public entry fun update_icon_url() {}

    // sử dụng struct này để tạo event cho các function update bên trên.
    struct UpdateEvent {
        success: bool,
        data: String
    }

    // Viết các function để get dữ liệu từ token về để hiển thị
    public entry fun get_token_name() {}
    public entry fun get_token_description() {}
    public entry fun get_token_symbol() {}
    public entry fun get_token_icon_url() {}
}
