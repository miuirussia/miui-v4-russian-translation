.class public Lcom/google/common/util/concurrent/ValueFuture;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "ValueFuture.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;-><init>()V

    return-void
.end method

.method public static ay()Lcom/google/common/util/concurrent/ValueFuture;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/common/util/concurrent/ValueFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ValueFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->cancel()Z

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
