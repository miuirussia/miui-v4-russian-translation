.class final enum Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final enum jq:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

.field private static final synthetic jr:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->jq:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->jq:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->jr:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
    .locals 1
    .parameter

    .prologue
    .line 169
    const-class v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->jr:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public a([B[B)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 173
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 175
    aget-byte v0, p1, v1

    aget-byte v3, p2, v1

    invoke-static {v0, v3}, Lcom/google/common/primitives/UnsignedBytes;->compare(BB)I

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    .line 180
    :goto_1
    return v0

    .line 174
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_1
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparator;->a([B[B)I

    move-result v0

    return v0
.end method
