.class Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;
.super Ljava/lang/Object;
.source "SimpleTimeLimiter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic be:Ljava/lang/Object;

.field final synthetic bf:J

.field final synthetic bg:Ljava/util/concurrent/TimeUnit;

.field final synthetic bh:Ljava/util/Set;

.field final synthetic bi:Lcom/google/common/util/concurrent/SimpleTimeLimiter;


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1$1;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->bi:Lcom/google/common/util/concurrent/SimpleTimeLimiter;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->bf:J

    iget-object v4, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->bg:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;->bh:Ljava/util/Set;

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
