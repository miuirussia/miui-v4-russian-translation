.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Maps.java"


# instance fields
.field final synthetic bk:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

.field final synthetic bp:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->bk:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    iput-object p2, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->bp:Ljava/util/Collection;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->bp:Ljava/util/Collection;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;->bk:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
