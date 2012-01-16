.class Lcom/google/common/collect/Maps$UnmodifiableEntrySet;
.super Lcom/google/common/collect/Maps$UnmodifiableEntries;
.source "Maps.java"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    .line 587
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 592
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 596
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
