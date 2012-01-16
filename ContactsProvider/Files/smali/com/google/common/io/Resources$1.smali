.class final Lcom/google/common/io/Resources$1;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic val$url:Ljava/net/URL;


# virtual methods
.method public ad()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/io/Resources$1;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/io/Resources$1;->ad()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
