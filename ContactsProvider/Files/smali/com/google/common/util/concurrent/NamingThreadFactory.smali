.class public Lcom/google/common/util/concurrent/NamingThreadFactory;
.super Ljava/lang/Object;
.source "NamingThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final wb:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final vY:Ljava/util/concurrent/ThreadFactory;

.field private final vZ:Ljava/lang/String;

.field private final wa:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/NamingThreadFactory;->wb:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private aH(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->vZ:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->vY:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/google/common/util/concurrent/NamingThreadFactory;->wa:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/NamingThreadFactory;->aH(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 71
    return-object v0
.end method
