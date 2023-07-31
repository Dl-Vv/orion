use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor, ExtraParams};
use orion::numbers::fixed_point::core::{FixedTrait, FixedType, FixedImpl};
use orion::operators::tensor::implementations::impl_tensor_fp::Tensor_fp;

fn input_1() -> Tensor<FixedType> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(FixedType { mag: 645922816, sign: true });
    data.append(FixedType { mag: 687865856, sign: true });
    data.append(FixedType { mag: 176160768, sign: false });

    let extra = ExtraParams { fixed_point: Option::Some(FixedImpl::FP8x23) };
    TensorTrait::new(shape.span(), data.span(), Option::Some(extra))
}