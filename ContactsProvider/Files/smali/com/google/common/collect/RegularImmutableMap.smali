.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient cw:Lcom/google/common/collect/ImmutableSet;

.field private final transient gQ:[Ljava/util/Map$Entry;

.field private final transient gR:I

.field private transient gS:Lcom/google/common/collect/ImmutableSet;

.field private transient gT:Lcom/google/common/collect/ImmutableCollection;

.field private final transient mask:I

.field private final transient table:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    .line 45
    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gQ:[Ljava/util/Map$Entry;

    .line 47
    array-length v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->J(I)I

    move-result v0

    .line 48
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    .line 49
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 52
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->gQ:[Ljava/util/Map$Entry;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 53
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 56
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->I(I)I

    move-result v0

    .line 57
    :goto_1
    iget v8, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0x2

    .line 58
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v9, v9, v8

    .line 59
    if-nez v9, :cond_0

    .line 60
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    aput-object v6, v5, v8

    .line 62
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v6, v8, 0x1

    aput-object v0, v5, v6

    .line 63
    add-int/2addr v2, v7

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    iput v2, p0, Lcom/google/common/collect/RegularImmutableMap;->gR:I

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gQ:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/RegularImmutableMap;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gR:I

    return v0
.end method


# virtual methods
.method public ch()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gT:Lcom/google/common/collect/ImmutableCollection;

    .line 173
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$Values;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gT:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public co()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->cw:Lcom/google/common/collect/ImmutableSet;

    .line 121
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->cw:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->gQ:[Ljava/util/Map$Entry;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public cp()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gS:Lcom/google/common/collect/ImmutableSet;

    .line 147
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gS:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->co()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_0

    move-object v0, v1

    .line 87
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->I(I)I

    move-result v0

    .line 78
    :goto_1
    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    .line 79
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 80
    if-nez v3, :cond_1

    move-object v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->cp()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->gQ:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/google/common/collect/Collections2;->aM:Lcom/google/common/base/Joiner;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->gQ:[Ljava/util/Map$Entry;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->ch()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
