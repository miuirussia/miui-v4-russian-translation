.class Lcom/google/common/collect/MapMaker$StrongValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# instance fields
.field final referent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1104
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 0
    .parameter

    .prologue
    .line 1112
    return-object p0
.end method

.method public as()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method
