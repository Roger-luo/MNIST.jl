@test isfile(MNIST.TRAINIMAGES)
@test isfile(MNIST.TRAINLABELS)
@test isfile(MNIST.TESTIMAGES)
@test isfile(MNIST.TESTLABELS)

@test MNIST.NROWS == MNIST.NCOLS == 28

@test MNIST.imageheader(MNIST.TRAINIMAGES) == (0x803, 60000, MNIST.NROWS, MNIST.NCOLS)
@test MNIST.imageheader(MNIST.TESTIMAGES)  == (0x803, 10000, MNIST.NROWS, MNIST.NCOLS)

@test MNIST.labelheader(MNIST.TRAINLABELS) == (0x801, 60000)
@test MNIST.labelheader(MNIST.TESTLABELS)  == (0x801, 10000)

