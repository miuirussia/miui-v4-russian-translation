.class Lcom/google/common/collect/MapMaker$LinkedSoftEntry;
.super Lcom/google/common/collect/MapMaker$SoftEntry;
.source "MapMaker.java"


# instance fields
.field final bn:Lcom/google/common/collect/MapMaker$ReferenceEntry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 978
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$SoftEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    .line 979
    iput-object p4, p0, Lcom/google/common/collect/MapMaker$LinkedSoftEntry;->bn:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .line 980
    return-void
.end method


# virtual methods
.method public h()Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$LinkedSoftEntry;->bn:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    return-object v0
.end method
