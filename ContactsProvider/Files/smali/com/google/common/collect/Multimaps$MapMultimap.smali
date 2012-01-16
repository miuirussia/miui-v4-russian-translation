.class Lcom/google/common/collect/Multimaps$MapMultimap;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;
.implements Ljava/io/Serializable;


# static fields
.field private static final ea:Lcom/google/common/base/Joiner$MapJoiner; = null

.field private static final serialVersionUID:J = 0x6cdfd44a398c560fL


# instance fields
.field transient dZ:Ljava/util/Map;

.field final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1082
    const-string v0, "], "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->Z(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "=["

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->F(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner$MapJoiner;->D(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Multimaps$MapMultimap;->ea:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method


# virtual methods
.method public bB()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->dZ:Ljava/util/Map;

    .line 1061
    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->dZ:Ljava/util/Map;

    .line 1064
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 979
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 949
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1068
    if-ne p1, p0, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return v0

    .line 1071
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/Multimap;

    if-eqz v2, :cond_3

    .line 1072
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 1073
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->size()I

    move-result v2

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->bB()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->bB()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1075
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .parameter

    .prologue
    .line 1031
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1032
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1036
    :goto_0
    return-object v0

    .line 1035
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const-string v0, "{}"

    .line 1091
    :goto_0
    return-object v0

    .line 1089
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1090
    sget-object v1, Lcom/google/common/collect/Multimaps$MapMultimap;->ea:Lcom/google/common/base/Joiner$MapJoiner;

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/Joiner$MapJoiner;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 1091
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->w()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
