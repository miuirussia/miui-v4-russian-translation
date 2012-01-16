.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "Maps.java"


# instance fields
.field final synthetic bj:Ljava/util/Set;

.field final synthetic bk:Lcom/google/common/collect/Maps$ImprovedAbstractMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->bk:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    iput-object p2, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->bj:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->bj:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->bk:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
