/*Copyright 1989 Free Software Foundation*/
/*
 * return: p_num if str contians legitimate number, NULL otherwise
 */

#define ERR_MSG "n/a"
#define NMAX 10

/*
 * comment:
 *  It can receive numbers that are separetd by ' '.
 */
int* get_int_secured(int* p_num);
    int* get_int(int* buff);
    /*
     * args:
     *  n --- if it contains -1, user himself must input desired amount
     */
    int* get_ints_secured(int* p_buff, int* n, int max);
    /*
     *  args:
     *      p_n - final p_buff length will be wrote here
     *  comment:
     *      need to test
     */
    int* get_ints_before_eol_or_max_secured(int* p_buff, int* p_n, int max);
    /*
     *  int* get_ints_before_max_secured(int* p_buff, int max) {
     *      args:
     *      return:
     *          NULL if something wrong;
     *          p_buff otherwise.
     */
    int* get_ints_before_max_secured(int* p_buff, int* p_len, int max);
    int* sort_ints_alloc(int* nums, int n);

int input(double* data, int* p_n);
    void output(double* data, int n);
    /*
     *  char stdin_skip_symbols(char stop) {
     *      returns:
     *          char from stop or EOF
     */
    void stdin_skip_symbols(char stop);

/*
 *  int* str_to_int_secured(char* str, int* p_num);
 *      return:
 *          p_num if beginning of str contains number.
 *          NULL otherwise.
 */
int* str_to_int_secured(char* str, int* p_num);
    float* str_to_float_secured(char* str, float* p_num);
    /*
     * returns str, if str contains only chars from set, NULL otherwise
     */
    char* str_contains_only(char* str, char* set);
    char* str_copy_n(const char* str, char* p_buff, int len);
    /*
     *  int str_find_symb_id(char* str, char symb)
     *      return:
     *          -1 if there was no that symb
     */
    int str_find_symb_id(char* str, char symb);

int max(int a, int b);
    int largest_prime_divisor(int num);
    int modulo(int devidend, int divisor);
    int divide_int(int devidend, int divisor);
    int is_prime(int num);

void error_msg(char* msg);

void print_encoded(char* str);
    int is_hex(char c);
    /*
     * returns 0, if no errors happend, 1 otherwise
     */
    int stdin_decoder();
    int* char_hex_to_int_secured(int* p_num, char c1, char c2);

void ints_squaring(int *a, int n);
    /*------------------------------------
        Функция выдаёт массив в stdout
    -------------------------------------*/
    void ints_output(const int* a, int n);
    int* filter_ints(int* arr, n, int* buff, int* n_buff, int (*filter)(int));
    void ints_squaring(int *a, int n);
    int ints_max(const int *a, int n);
    int ints_min(const int *a, int n);
    double ints_mean(const int *a, int n);
    double ints_variance(const int *a, int n);
    int* sort_ints(int* nums, int n);
    int check_ints_are_digits(const int* nums, int len);
    int* ints_skip_zeros(int* nums, int* p_len);
    int* ints_shift_looped(int* nums, int len, int shift);
    /*
     *  int* ints_shift_to_right(const int* nums, int len);
     *      comment:
     *          Shifts elements of the array to right in
     *          that way:
     *          { 1, 5, 3, 0, 0 } -> { 0, 0, 1, 5, 3 }
     *
     *          Need to test
     *      args:
     */
    int* ints_shift_to_right(const int* nums, int len);
    int int_len(int num);

int* ints_copy_alloc(int* nums, int n);

//	 Function of reading a record of a given type from a file by its serial
//	     number.
struct my_struct read_record_from_file(FILE *pfile, int index)
    //	Function of writing a record of the specified type to the file at
    //	    the specified serial number.
    void write_record_in_file(FILE *pfile,
    //	Function of mutual transfer of two records in the file by
    //	    their indexes.
    void swap_records_in_file(FILE *pfile, int record_index1,
        int record_index2)
    //	Function to get file size in bytes.
    int get_file_size_in_bytes(FILE *pfile)
    //	Function to get count of records in file
    int get_records_count_in_file(FILE *pfile)





int* str_to_int_secured(char* str, int* p_num) {
    int i = 0;
    if (str[i] == '-' || str[i] == '+')
        i++;
    for (; str[i]; i++) {
        if (str[i] >= '0' && str[i] <= '9')
            continue;
        else
            return NULL;
    }
    sscanf(str, "%i", p_num);
    return p_num;
}
int max(int a, int b) {
    return a > b ? a : b;
}
float* str_to_float_secured(char* str, float* p_num) {
    int i = 0;
    int is_dot_passed = 0;
    if (str[i] == '-' || str[i] == '+')
        i++;
    for (; str[i]; i++) {
        if (str[i] >= '0' && str[i] <= '9') {
            continue;
        } else if (str[i] == '.' && is_dot_passed == 0) {
            is_dot_passed = 1;
            continue;
        } else {
            return NULL;
        }
    }
    sscanf(str, "%f", p_num);
    return p_num;
}
int* get_int_secured(int* p_num) {
    int* result = p_num;
    char c = 0;
    if (scanf("%d%c", p_num, &c) != 2 || (c != '\n' && c != ' ')) {
        result = NULL;
    }
    return result;
}
int modulo(int devidend, int divisor) {
    while (devidend - divisor >= 0) {
        devidend -= divisor;
    }
    return devidend;
}
int divide_int(int devidend, int divisor) {
    int result = 0;
    while (devidend - divisor >= 0) {
        devidend -= divisor;
        result++;
    }
    return result;
}
int is_prime(int num) {
    for (int i = 2; i < num; i++) {
        if (modulo(num, i) == 0)
            return 0;
    }
    return 1;
}
int largest_prime_divisor(int num) {
    int i = 1;
    int largest_prime = 2;
    while (num > i) {
        i++;
        if (is_prime(i) == 0 || modulo(num, i) != 0)
            continue;
        num = divide_int(num, i);
        largest_prime = i;
    }
    return largest_prime;
}
void error_msg(char* msg) {
    printf("%s", msg);
}
void print_encoded(char* str) {
    for (int i = 0; str[i]; i++) {
        if (str[i] == ' ') {
            printf(" ");
        } else {
            printf("%X", str[i]
        }
    }
}
/*
 * returns str, if str contains only chars from set, NULL otherwise
 */
char* str_contains_only(char* str, char* set) {
    for (int i = 0; i < str[i]; i++) {
        int is_present = 0;
        for (int a = 0; a < set[a]; a++) {
            if (str[i] == set[a]) {
                is_present = 1;
                break;
            }
        }
        if (is_present == 0) {
            return 0;
        }
    }
    return str;
}
int is_hex(char c) {
    if ((c >= '0' && c <= '9')
            || (c >= 'A' && c <= 'F')) {
        return 1;
    }
    return 0;
}
/*
 * returns 0, if no errors happend, 1 otherwise
 */
int stdin_decoder() {
    while (1) {
        char c1, c2, c3;
        if (scanf("%c%c%c", &c1, &c2, &c3) != 3
                || is_hex(c1) == 0
                || is_hex(c2) == 0) {
            return 1;
        }
        int the_num;
        printf("%c", char_hes_to_int_secured(the_num));
        if (c3 == ' ') {
            printf(" ");
        } else if (c3 == '\n') {
            break;
        }
    }
}
int* char_hex_to_int_secured(int* p_num, char c1, char c2) {
    int result = 0;
    if (c1 >= '0' && c1 <= '9') {
        result += (c1 - '0')*16;
    } else if (c1 >= 'A', c1 <= 'F') {
        result += (c1 - 'A' + 10)*16;
    } else {
        return NULL;
    }
    if (c2 >= '0' && c2 <= '9') {
        result += c2 - '0';
    } else if (c2 >= 'A', c2 <= 'F') {
        result += c2 - 'A' + 10;
    } else {
        return NULL;
    }
    *p_num = result;
    return p_num;
}
int* get_ints_secured(int* p_buff, int* n, int max) {
    char c;
    int* result = p_buff;
    if (*n == -1) {
        if (scanf("%d%c", n, &c) != 2 || (c != '\n' && c != ' ')
                || *n < 0
                || *n > max
           ) {
            result = NULL;
        }
    }
    if (result) {
        if (*n > max) {
            result = NULL;
        }
    }
    if (result) {
        for (int i = 0; i < *n; i++) {
            if ((scanf("%d%c", &p_buff[i], &c) == 2
                    && (c != '\n' && c != ' ')
                ) == 0
               ) {
                result = NULL;
            }
        }
    }
    return result;
}
int* filter_ints(int* arr, n, int* buff, int* n_buff, int (*filter)(int)) {
    int a = 0,
        b = 0;
    while (a < n) {
        if (filter(arr[a])) {
            buff[b] = arr[a];
            b++;
        }
        a++;
    }
    *n_buff = b;
    return buff;
}
void ints_output(const int* a, int n) {
    if (n != 0) {
        printf("%d", a[0]);
        for (int i = 1; i < n; i++) {
            printf(" %d", a[i]);
        }
    }
}
void ints_squaring(int *a, int n) {
    for (int i = 0; i < n; i++) {
        a[i] *= a[i];
    }
}
int ints_max(const int *a, int n) {
    int result = a[0];
    for (int i = 1; i < n; i++) {
        if (a[i] > result)
            result = a[i];
    }
    return result;
}
int ints_min(const int *a, int n) {
    int result = a[0];
    for (int i = 1; i < n; i++) {
        if (a[i] < result)
            result = a[i];
    }
    return result;
}
double ints_mean(const int *a, int n) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
        sum += a[i];
    }
    return (double)sum / n;
}
double variance(const int *a, int n) {
    double sq_sum = 0;
    for (int i = 0; i < n; i++) {
        double diff = a[i] - mean(a, n);
        sq_sum += diff * diff;
    }
    return sq_sum / n;
}
/*
 *  return:
 *      Always returns inputed nums.
 */
int* sort_ints(int* nums, int n) {
    for (int a = 0; a < n; a++) {
        for (int b = a; b < n; b++) {
            if (nums[a] > nums[b]) {
                int buff = nums[a];
                nums[a] = nums[b];
                nums[b] = buff;
            }
        }
    }
    return nums;
}
int* get_ints_before_eol_or_max_secured(int* p_buff, int* p_n, int max) {
    int* result = p_buff;

    int i = 0;
    for (; i < max; i++) {
        char c;
        if (scanf("%d%c", &p_buff[i], &c) == 2
                && (c == ' ' || c == '\n')) {
            if (c == '\n')
                break;
        } else {
            result = NULL;
            break;
        }
    }
    if (result) {
        *p_n = i + 1;
        /* i + 1 --- because i was an index*/
    }
    return result;
}
int check_ints_are_digits(const int* nums, int len) {
    int result = 1;
    for (int i = 0; i < len; i++) {
        if (nums[i] < 0 || nums[i] > 9) {
            result = 0;
            break;
        }
    }
    return result;
}
int* ints_skip_zeros(int* nums, int* p_len) {
    while (nums[0] == 0 && *p_len) {
        nums++;
        (*p_len)--;
    }
    return nums;
}
int* ints_shift_looped(int* nums, int len, int shift) {
    shift %= len;
    if (shift < 0) {
        shift = len + shift;
        /* len + shift --- keep in mind that shift is negative */
    }
    for (int step = 0; step < len * shift; step++) {
        int i = step % len;
            buff = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = buff;
    }
    return nums;
}
int* ints_shift_to_right(const int* nums, int len) {
    int shift = 0;
    for (int i = len - 1; nums[i] == 0 && i >= 0; i--) {
        shift++;
    }
    return ints_shift_looped(nums, shift);
}
char* str_copy_n(char* str, char* p_buff, int len) {
    int i = 0;
    for (; i < len; i++) {
        buff[i] = str[i];
    }
    p_buff[i] = '\0';
    return p_buff;
}
int* get_ints_before_max_secured(int* p_buff, int max) {
    int* result = p_buff;
    char buff1[1000];

    gets(buff1);

    if ((buff1[0] >= '0' && buff1[0] <= '9') == 0) {
        result = NULL;
    }

    int i = 0;
    int buff2[1000];
    if (result) {
        for (; i < max; i++) {
            int whitespace_id = str_find_symb_id(buff1, ' ');
            int the_num;
            int* result_num = str_to_int_secured(buff1, &the_num);
            if (result_num == NULL) {
                result = NULL;
                break;
            } else {
                p_buff[i] = the_num;
            }
        }
    }
    if (result) {
        if (i != max)
            result = NULL;
    }

    return result;
}
int int_len(int num) {
    int result = 1;
    if (num < 0) {
        result++;
        num = -num;
    }
    while (num > 9) {
        result++;
        num /= 10;
    }
    return result;
}
int* ints_copy_alloc(const int* nums, int n) {
    int* result = malloc(n * sizeof(int));
    for (int i = 0; i < n; i++) {
        result[i] = nums[i];
    }
    return result;
}
int input(double* data, int* p_n) {
    int result = 0;

    if (scanf("%d", p_n) != 1
            || *p_n < 1) {
        result = 1;
    }
    if (result == 0) {
        int i = 0;
        for (; i < *p_n; i++) {
            if (scanf("%lf", &data[i]) != 1) {
                result = 1;
                break;
            }
        }
    }
    if (result == 0) {
        *p_n = i;
    }

    return result;
}
void output(double* data, int n) {
    if (n > 0) {
        printf("%.2lf", data[0]);
        if (n > 1) {
            for (int i = 1; i < n; i++) {
                printf(" %.2lf", data[i]);
            }
        }
    }
}
int* get_int(int* buff) {
    int* result = buff;
    if (scanf("%d", &buff) != 1) {
        result = NULL;
    }
    return result;
}
void stdin_skip_symbols(char stop) {
    while (getc(stdin) != stop);
}
//	 Function of reading a record of a given type from a file by its serial
//	     number.
struct my_struct read_record_from_file(FILE *pfile, int index)
{
    //	Calculation of the offset at which desired entry should be located
    //	    from the beginning of the file.
    int offset = index * sizeof(struct my_struct);
    //	Move the position pointer to the calculated offset from the
    //	    beginning of the file.
    fseek(pfile, offset, SEEK_SET);

    //	Reading a record of the specified type from a file.
    struct my_struct record;
    fread(&record, sizeof(struct my_struct), 1, pfile);

    //	For safety reasons, we return the file position pointer to
    //	    the beginning of the file.
    rewind(pfile);

    //	Return read record
    return record;
}
//	Function of writing a record of the specified type to the file at
//	    the specified serial number.
void write_record_in_file(FILE *pfile,
        const struct my_struct *record_to_write, int index)
{
    //	Calculation of the offset at which the required record should
    //	    be located from the beginning of the file.
    int offset = index * sizeof(struct my_struct);
    //	Move the position pointer to the calculated offset from the
    //	    beginning of the file.
    fseek(pfile, offset, SEEK_SET);

    //	Write a record of the specified type to a file.
    fwrite(record_to_write, sizeof(struct my_struct), 1, pfile);

    //	Just in case, force the I/O subsystem to write the contents of
    //	    its buffer to a file right now.
    fflush(pfile);

    //	For safety reasons, return the file position pointer to the
    //	    beginning of the file.
    rewind(pfile);
}
//	Function of mutual transfer of two records in the file by their indexes.
void swap_records_in_file(FILE *pfile, int record_index1, int record_index2)
{
    //	Read both records from file to variables
    struct my_struct record1 = read_record_from_file(pfile, record_index1);
    struct my_struct record2 = read_record_from_file(pfile, record_index2);

    //	Rewrite records in file
    write_record_in_file(pfile, &record1, record_index2);
    write_record_in_file(pfile, &record2, record_index1);
}
//	Function to get file size in bytes.
int get_file_size_in_bytes(FILE *pfile)
{
    int size = 0;
    fseek(pfile, 0, SEEK_END);    //	Move the position pointer to the end
                                  //	    of the file.
    size = ftell(pfile);          //	Read the number of bytes from
                                  //	    the beginning of the file to the
                                  //	    current position pointer.
    rewind(pfile);                //	For safety reasons, move the
                                  //	    position pointer back to the
                                  //	    beginning of the file.
    return size;
}
//	Function to get count of records in file
int get_records_count_in_file(FILE *pfile)
{
    return get_file_size_in_bytes(pfile) /	sizeof(struct my_struct);
}



CC=gcc
CFLAGS=-c -Wall -Wextra -Werror
LDFLAGS=
SOURCES=main.c hello.c factorial.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)

clean:
	rm -f *.out *.o *.a ../build/*

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@
