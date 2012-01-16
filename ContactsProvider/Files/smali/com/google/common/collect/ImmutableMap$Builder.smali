.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# instance fields
.field final lY:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->lY:Ljava/util/List;

    .line 166
    return-void
.end method

.method private static r(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .parameter

    .prologue
    .line 204
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 205
    packed-switch v0, :pswitch_data_0

    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 213
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v0}, Lcom/google/common/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->fD()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_1
    new-instance v1, Lcom/google/common/collect/SingletonImmutableMap;

    invoke-static {p0}, Lcom/google/common/collect/Iterables;->f(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lcom/google/common/collect/SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dW()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->lY:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->r(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->lY:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method
