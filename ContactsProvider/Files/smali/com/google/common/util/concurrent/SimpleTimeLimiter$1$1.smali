.class Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic mf:Ljava/lang/reflect/Method;

.field final synthetic mg:[Ljava/lang/Object;

.field final synthetic mh:Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;->mh:Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;

    iput-object p2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;->mf:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;->mg:[Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;->mf:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;->mh:Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->be:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;->mg:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/common/base/Throwables;->a(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "can\'t get here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
