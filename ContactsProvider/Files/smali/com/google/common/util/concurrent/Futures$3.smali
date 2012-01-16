.class final Lcom/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic oj:Ljava/lang/Exception;


# virtual methods
.method public a(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->oj:Ljava/lang/Exception;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 207
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Futures$3;->a(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
