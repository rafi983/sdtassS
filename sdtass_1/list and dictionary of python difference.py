'''
Differences between List and Dictionary in Python:

1. Structure:
   - List: An ordered collection of items. Elements are accessed by their index (position).
   - Dictionary: An unordered collection of key-value pairs. Elements are accessed by their unique keys.

2. Syntax:
   - List: Created using square brackets `[]`. Example: `my_list = [1, 2, 3]`
   - Dictionary: Created using curly braces `{}`. Example: `my_dict = {'a': 1, 'b': 2}`

3. Accessing Elements:
   - List: Access elements using zero-based integer indices, e.g., `my_list[0]`.
   - Dictionary: Access values by specifying the corresponding key, e.g., `my_dict['a']`.

4. Ordering:
   - List: Maintains the order of elements as they are inserted.
   - Dictionary: Maintains insertion order (since Python 3.7+), but primarily designed for fast lookup by key rather than sequence position.

5. Duplicate Elements:
   - List: Can contain duplicate elements.
   - Dictionary: Cannot contain duplicate keys (keys must be unique), but can have duplicate values.

6. Mutable:
   - List: Elements can be changed, added, or removed.
   - Dictionary: Keys cannot be changed (must be immutable types like strings or numbers), but values can be changed, added, or removed.
'''
