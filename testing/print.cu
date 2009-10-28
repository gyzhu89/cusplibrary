#include <unittest/unittest.h>

#include <cusp/io.h>
#include <cusp/print.h>
#include <cusp/convert.h>

void TestPrintMatrix(void)
{
    cusp::coo_matrix<int, float, cusp::host_memory> coo;
    cusp::array2d<float, cusp::host_memory> dense;

    // load matrix
    cusp::read_matrix_market_file(coo, "data/test/coordinate_real_general.mtx");

    // convert to array2d
    cusp::convert(dense, coo);

    //cusp::print_matrix(coo);
    //cusp::print_matrix(dense);
}
DECLARE_UNITTEST(TestPrintMatrix);

