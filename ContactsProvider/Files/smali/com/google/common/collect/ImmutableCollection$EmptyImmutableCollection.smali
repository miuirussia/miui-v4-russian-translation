.class Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableCollection.java"


# static fields
.field private static final jO:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->jO:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableCollection$1;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->s()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/google/common/collect/Iterators;->gj:Lcom/google/common/collect/UnmodifiableIterator;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->jO:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 212
    array-length v0, p1

    if-lez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 215
    :cond_0
    return-object p1
.end method
