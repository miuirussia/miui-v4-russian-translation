.class final Lcom/google/common/io/ByteStreams$4;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# instance fields
.field final synthetic ib:Lcom/google/common/io/InputSupplier;

.field final synthetic ic:J

.field final synthetic ie:J


# virtual methods
.method public ad()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$4;->ib:Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->ae()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 804
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$4;->ic:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 806
    :try_start_0
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$4;->ic:J

    invoke-static {v0, v1, v2}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :cond_0
    new-instance v1, Lcom/google/common/io/LimitInputStream;

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$4;->ie:J

    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v1

    .line 807
    :catch_0
    move-exception v1

    .line 808
    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 809
    throw v1
.end method

.method public bridge synthetic ae()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$4;->ad()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
