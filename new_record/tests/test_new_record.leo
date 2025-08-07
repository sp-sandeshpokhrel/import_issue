// The 'test_new_record' test program.
import new_record.aleo;
program test_new_record.aleo {
    @test
    script test_it() {
        let result: u32 = new_record.aleo/main(1u32, 2u32);
        assert_eq(result, 3u32);
    }

    @test
    @should_fail
    transition do_nothing() {
        let result: u32 = new_record.aleo/main(2u32, 3u32);
        assert_eq(result, 3u32);
    }
}
