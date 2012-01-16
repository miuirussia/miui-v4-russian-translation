.class public Lcom/google/common/util/concurrent/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    instance-of v0, p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Lcom/google/common/util/concurrent/UninterruptibleFuture;

    .line 57
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Futures$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$1;-><init>(Ljava/util/concurrent/Future;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static l(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-static {}, Lcom/google/common/util/concurrent/ValueFuture;->ay()Lcom/google/common/util/concurrent/ValueFuture;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ValueFuture;->i(Ljava/lang/Object;)Z

    .line 151
    return-object v0
.end method
