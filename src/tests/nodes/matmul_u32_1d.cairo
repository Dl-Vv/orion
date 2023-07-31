use core::clone::Clone;
use core::debug::PrintTrait;
mod input_0;
mod input_1;
mod output_0;

use array::{ArrayTrait, SpanTrait};
use core::option::OptionTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor};
use orion::operators::tensor::implementations::impl_tensor_u32::{Tensor_u32, u32TensorPartialEq};
use orion::utils::assert_eq;


#[test]
#[available_gas(200000000)]
fn test_matmul_u32_1d() {
    let a = input_0::input_0();
    let b = input_1::input_1();
    let z = output_0::output_0();

    let y = a.matmul(@b);

    assert_eq(y, z);
}

