# The Design and Application of Steerable Side Window Framework

Abstract—Traditional filters based on full window consider that neighbor pixels surround
 target pixel, which likely crosses over the potential edges. Although the side win
dow (SW) with eight sub-windows alleviates artifacts and halos, it still faces a
 challenge with mandatory smoothing. To address the issue, a novel and simple
 steerable side window (SSW) framework is proposed in the paper. The proposed
 SSW utilizes derivation of Gaussian function to generate a set of side windows
 including half- and quarter-window with arbitrary orientation, which effectively
 improves the perception of detail information and significantly enhances adher
ence to the pixel distribution. Meanwhile, the SSW can also be easily embedded
 in a variety of filters. It not only inherits the properties of SW, but also extends
 the flexibility of SW. Experiments are carried out on different filters, and the
 results show that the proposed SSW technique is both effective and efficient,
 enabling more advantageous applications.

<img width="2133" height="1433" alt="Fig5" src="https://github.com/user-attachments/assets/89079bb3-ce3d-44db-9aa9-1a61b82c083c" />



Fig.1 The architecture of SSW.A set of dedicated filters with different orientations handles the input image.The filtered image is adaptively constructed from input image and a set of latent maps.

Fig. 1 shows the architecture of SSW. The proposed SSW utilizes the basis filters
 to convolute the test image. Then it selects the smallest deviation between the input
 image and latent maps to construct the final output. The SSW incorporates more side
 local information from the image, so it is easier to obtain high-quality filtering results.

# 📚 Cite Us

✨ Please cite us if this work is helpful to you 

```bibtex
@ARTICLE{
  author={Xiaohong Jia, Tao Lei, Yingbo Wang, Xuejun Zhang, Guanghui Yan and Asoke K. Nandi},
  journal={Neural Computing and Applications}, 
  title={The Design and Application of Steerable Side Window Framework}, 
  keywords={Steerable side window, Arbitrary orientation, Smoothing, Edge preserving},
  doi={{}}
