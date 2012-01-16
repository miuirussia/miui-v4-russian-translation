.class Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;
.super Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;
.source "ConstrainedMap.java"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;-><init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V

    .line 143
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
