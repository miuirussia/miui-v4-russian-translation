.class Lcom/google/common/collect/Maps$UnmodifiableBiMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/BiMap;

.field transient oW:Lcom/google/common/collect/BiMap;

.field final unmodifiableMap:Ljava/util/Map;

.field transient values:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 629
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    .line 630
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    .line 631
    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->oW:Lcom/google/common/collect/BiMap;

    .line 632
    return-void
.end method


# virtual methods
.method protected E()Ljava/util/Map;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->E()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/Set;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    .line 651
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->q()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public r()Lcom/google/common/collect/BiMap;
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->oW:Lcom/google/common/collect/BiMap;

    .line 644
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->r()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->oW:Lcom/google/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
