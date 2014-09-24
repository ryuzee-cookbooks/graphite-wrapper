graphite-wrapper Cookbook
==========
This cookbook fixes a problem of graphite cookbook. See https://github.com/hw-cookbooks/graphite/pull/172

The problem is that graphite cookbook generate a config file named "graphite" but apache can read config files only if these config files end with .conf.

Requirements
------------
#### packages
- `graphite` - Installing Graphite. available at https://github.com/hw-cookbooks/graphite

Attributes
----------
#### graphite-wrapper::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['graphite']['password']</tt></td>
    <td>String</td>
    <td>Login password for Graphite</td>
    <td><tt>password</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite']['timezone']</tt></td>
    <td>String</td>
    <td>Timezone for Graphite</td>
    <td><tt>Asia/Tokyo</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite']['apache']['basic_auth']['enabled']</tt></td>
    <td>Boolean</td>
    <td>Use apache2 basic authorization</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite']['apache']['basic_auth']['file_path']</tt></td>
    <td>String</td>
    <td>path to password file</td>
    <td><tt>htpasswd</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite']['apache']['basic_auth']['user']</tt></td>
    <td>String</td>
    <td>Login user for basic authorization</td>
    <td><tt>admin</tt></td>
  </tr>
  <tr>
    <td><tt>['graphite']['apache']['basic_auth']['password']</tt></td>
    <td>String</td>
    <td>Login password for basic authorization</td>
    <td><tt>password</tt></td>
  </tr>
</table>

Usage
-----
#### graphite-wrapper::default
Just include `graphite-wrapper` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[graphite-wrapper::default]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ryutaro YOSHIBA

License: MIT
