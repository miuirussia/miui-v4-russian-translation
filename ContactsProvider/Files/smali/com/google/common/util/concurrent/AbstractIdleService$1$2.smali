.class Lcom/google/common/util/concurrent/AbstractIdleService$1$2;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$2;->aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$2;->aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->bC:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->A()V

    .line 59
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$2;->aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->ef()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$2;->aD:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->e(Ljava/lang/Throwable;)V

    .line 62
    invoke-static {v0}, Lcom/google/common/base/Throwables;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
