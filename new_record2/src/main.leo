program new_record2.aleo {
    record TT {
        id: u32,
        owner: address
    }

    transition create_record()->TT {
        return TT { id:1u32,owner:self.signer};
    }
}