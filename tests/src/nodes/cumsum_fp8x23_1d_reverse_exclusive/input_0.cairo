use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::FixedTrait;
use orion::numbers::FP8x23;

fn input_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 8388608, sign: false });
    data.append(FP8x23 { mag: 16777216, sign: false });
    data.append(FP8x23 { mag: 25165824, sign: false });
    data.append(FP8x23 { mag: 33554432, sign: false });
    data.append(FP8x23 { mag: 41943040, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
