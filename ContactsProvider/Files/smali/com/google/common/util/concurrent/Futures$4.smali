.class final Lcom/google/common/util/concurrent/Futures$4;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic dt:Lcom/google/common/base/Function;


# virtual methods
.method public T(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$4;->dt:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->l(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Futures$4;->T(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
