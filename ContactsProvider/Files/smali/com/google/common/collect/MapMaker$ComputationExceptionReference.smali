.class Lcom/google/common/collect/MapMaker$ComputationExceptionReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# instance fields
.field final vd:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;->vd:Ljava/lang/Throwable;

    .line 822
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 0
    .parameter

    .prologue
    .line 828
    return-object p0
.end method

.method public as()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 831
    new-instance v0, Lcom/google/common/collect/AsynchronousComputationException;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;->vd:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/google/common/collect/AsynchronousComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    return-object v0
.end method
