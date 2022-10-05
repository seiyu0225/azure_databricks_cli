## 参考：https://learn.microsoft.com/ja-jp/azure/databricks/dev-tools/cli/
## 環境変数の設定，xxxxxxxxxxは適宜設定
export DATABRICKS_AAD_TOKEN=xxxxxxxxxx
host_url=xxxxxxxxxx
expect -c "
    set timeout 2
    spawn databricks configure --aad-token
    expect \".*\"
    send \"${host_url}\n\"
    expect \"$\"
    exit 0
"
python copy_file.py