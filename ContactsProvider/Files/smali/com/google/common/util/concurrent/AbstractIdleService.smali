.class public abstract Lcom/google/common/util/concurrent/AbstractIdleService;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Lcom/google/common/base/Service;


# instance fields
.field private final G:Lcom/google/common/base/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->G:Lcom/google/common/base/Service;

    return-void
.end method


# virtual methods
.method protected abstract A()V
.end method

.method protected a(Lcom/google/common/base/Service$State;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 87
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractIdleService$2;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;Lcom/google/common/base/Service$State;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract z()V
.end method
