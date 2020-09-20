# gcp-terraform

- terraform fmt
- tflint

## tl;dr

```bash
terraform init #初期化
terraform plan #実行計画の確認
terraform apply #変更の適用
terraform destroy #リソースの削除
```

## 課題

やってみたら、永嶋をレビュアーにしたプルリクエストを発行してレビューを依頼してください

### 1.仮想マシンの設定のカスタマイズ

[このドキュメント](https://www.terraform.io/docs/providers/google/r/compute_instance.html)を見ながら、仮想マシンの設定をカスタマイズしてみましょう

#### 1.1仮想マシンのOSをUbuntu 20.04にしてみましょう

#### 1.2仮想マシンのディスクサイズを15GBにしてみましょう

#### 1.3access_configを使って、外部IPアドレスを付与してみましょう

#### 1.4metadata_startup_script を使って、nginxをインストールしてみましょう

#### 1.5ネットワークタグを使って、httpアクセスができるようにしてみましょう

#### 1.6 同じ構成の仮想マシンを2台作ってみましょう

-----

ただし、共通のパラメータを指定する箇所はvariableを使いましょう

#### 1.7Cloud Load BalancerとCompute Engineを組み合わせて作成してみましょう

※ロードバランサーの部品を作って組み合わせる感じなので、つくるものがたくさんあります

- [インスタンスグループ](https://www.terraform.io/docs/providers/google/d/compute_instance_group.html)
- [グローバルの転送ルール](https://www.terraform.io/docs/providers/google/r/compute_global_forwarding_rule.html)
- [httpプロキシ](https://www.terraform.io/docs/providers/google/r/compute_target_http_proxy.html)
- [urlマッピング](https://www.terraform.io/docs/providers/google/r/compute_url_map.html)
- [ヘルスチェック](https://www.terraform.io/docs/providers/google/r/compute_health_check.html)

### Cloud Run

#### Cloud RunのチュートリアルをTerraformでやってみましょう

[このチュートリアル](https://cloud.google.com/run/docs/tutorials/system-packages?hl=ja)を使います

#### GCRをTerraformで作ってみましょう

- [Google Container Registry](https://www.terraform.io/docs/providers/google/r/container_registry.html)

#### Cloud RunをTerraformでデプロイしてみましょう

- [Cloud Run service](https://www.terraform.io/docs/providers/google/r/cloud_run_service.html)