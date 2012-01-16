.class final Lcom/google/common/collect/ConstrainedMap$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "ConstrainedMap.java"


# instance fields
.field final synthetic co:Ljava/util/Map$Entry;

.field final synthetic nb:Lcom/google/common/collect/MapConstraint;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/common/collect/ConstrainedMap$1;->co:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/ConstrainedMap$1;->nb:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected af()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$1;->co:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$1;->af()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$1;->nb:Lcom/google/common/collect/MapConstraint;

    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$1;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/MapConstraint;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$1;->co:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
