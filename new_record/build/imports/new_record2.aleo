program new_record2.aleo;

record TT:
    owner as address.private;
    id as u32.private;

function create_record:
    cast self.signer 1u32 into r0 as TT.record;
    output r0 as TT.record;
