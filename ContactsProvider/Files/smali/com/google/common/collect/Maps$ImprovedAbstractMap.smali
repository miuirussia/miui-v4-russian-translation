.class abstract Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# instance fields
.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private transient values:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1264
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract en()Ljava/util/Set;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 1278
    if-nez v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->en()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 1281
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    .line 1288
    if-nez v0, :cond_0

    .line 1289
    invoke-super {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1290
    new-instance v0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    .line 1300
    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    .line 1307
    if-nez v0, :cond_0

    .line 1308
    invoke-super {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1309
    new-instance v0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    .line 1319
    :cond_0
    return-object v0
.end method
