.class public Lcom/google/common/util/concurrent/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method public static bb()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;-><init>(Lcom/google/common/util/concurrent/Executors$1;)V

    return-object v0
.end method
