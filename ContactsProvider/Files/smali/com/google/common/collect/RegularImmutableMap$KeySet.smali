.class Lcom/google/common/collect/RegularImmutableMap$KeySet;
.super Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;
.source "RegularImmutableMap.java"


# instance fields
.field final map:Lcom/google/common/collect/RegularImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->b(Lcom/google/common/collect/RegularImmutableMap;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;-><init>([Ljava/lang/Object;I)V

    .line 157
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 158
    return-void
.end method


# virtual methods
.method bridge synthetic B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 150
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->c(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
