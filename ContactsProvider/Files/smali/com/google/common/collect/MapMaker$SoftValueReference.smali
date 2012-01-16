.class Lcom/google/common/collect/MapMaker$SoftValueReference;
.super Lcom/google/common/base/FinalizableSoftReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# instance fields
.field final hx:Lcom/google/common/collect/MapMaker$ReferenceEntry;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1079
    sget-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->vq:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1080
    iput-object p2, p0, Lcom/google/common/collect/MapMaker$SoftValueReference;->hx:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .line 1081
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 2
    .parameter

    .prologue
    .line 1089
    new-instance v0, Lcom/google/common/collect/MapMaker$SoftValueReference;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/MapMaker$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public as()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$SoftValueReference;->hx:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->g()V

    .line 1085
    return-void
.end method
