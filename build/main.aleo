import credits.aleo;
import validator_oracle.aleo;
import delegator1.aleo;
import delegator2.aleo;
import delegator3.aleo;
import delegator4.aleo;
import delegator5.aleo;
import token_registry.aleo;
import paleo_token.aleo;
import pondo_protocol_token.aleo;
import wrapped_credits.aleo;
import pondo_protocol.aleo;
program import_program.aleo;

struct admin_operation:
    arg as field;
    op_type as u8;
    request_id as u64;

struct TokenMetadata:
    token_id as field;
    name as u128;
    symbol as u128;
    decimals as u8;
    supply as u128;
    max_supply as u128;
    admin as address;
    external_authorization_required as boolean;
    external_authorization_party as address;

struct TokenOwner:
    account as address;
    token_id as field;

function main:
    output 1u32 as u32.private;
