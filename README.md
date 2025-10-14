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

<img width="543" height="370" alt="image" src="https://github.com/user-attachments/assets/b1e0f244-6d56-497b-8cf3-ebb1e65000a2" />

Fig.1 The architecture of SSW.A set of dedicated filters with different orientations handles the input image.The filtered image is adaptively constructed from input image and a set of latent maps.
