.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field public static final pA:Lcom/google/common/base/CharMatcher;

.field public static final pB:Lcom/google/common/base/CharMatcher;

.field public static final pC:Lcom/google/common/base/CharMatcher;

.field public static final pD:Lcom/google/common/base/CharMatcher;

.field public static final pE:Lcom/google/common/base/CharMatcher;

.field public static final pF:Lcom/google/common/base/CharMatcher;

.field public static final pG:Lcom/google/common/base/CharMatcher;

.field public static final pH:Lcom/google/common/base/CharMatcher;

.field public static final pI:Lcom/google/common/base/CharMatcher;

.field public static final pJ:Lcom/google/common/base/CharMatcher;

.field public static final pK:Lcom/google/common/base/CharMatcher;

.field public static final pL:Lcom/google/common/base/CharMatcher;

.field public static final pM:Lcom/google/common/base/CharMatcher;

.field public static final pN:Lcom/google/common/base/CharMatcher;

.field public static final pO:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x600

    const/16 v9, 0x20

    const/16 v8, 0x7f

    const/16 v7, 0x2000

    const/4 v1, 0x0

    .line 70
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x200a

    invoke-static {v7, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->pA:Lcom/google/common/base/CharMatcher;

    .line 82
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200a

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->pB:Lcom/google/common/base/CharMatcher;

    .line 91
    invoke-static {v1, v8}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->pC:Lcom/google/common/base/CharMatcher;

    .line 100
    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 101
    const-string v2, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-char v5, v3, v0

    .line 106
    add-int/lit8 v6, v5, 0x9

    int-to-char v6, v6

    invoke-static {v5, v6}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    sput-object v2, Lcom/google/common/base/CharMatcher;->pD:Lcom/google/common/base/CharMatcher;

    .line 117
    const/16 v0, 0x9

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-static {v2, v9}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x1680

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x180e

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200b

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x2029

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x205f

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->pE:Lcom/google/common/base/CharMatcher;

    .line 133
    new-instance v0, Lcom/google/common/base/CharMatcher$1;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$1;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->pF:Lcom/google/common/base/CharMatcher;

    .line 145
    new-instance v0, Lcom/google/common/base/CharMatcher$2;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$2;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->pG:Lcom/google/common/base/CharMatcher;

    .line 155
    new-instance v0, Lcom/google/common/base/CharMatcher$3;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$3;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->pH:Lcom/google/common/base/CharMatcher;

    .line 165
    new-instance v0, Lcom/google/common/base/CharMatcher$4;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$4;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->pI:Lcom/google/common/base/CharMatcher;

    .line 175
    new-instance v0, Lcom/google/common/base/CharMatcher$5;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$5;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->pJ:Lcom/google/common/base/CharMatcher;

    .line 185
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v8, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->pK:Lcom/google/common/base/CharMatcher;

    .line 194
    invoke-static {v1, v9}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v8, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v10, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v7, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->pL:Lcom/google/common/base/CharMatcher;

    .line 215
    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v10, v1}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->pM:Lcom/google/common/base/CharMatcher;

    .line 230
    new-instance v0, Lcom/google/common/base/CharMatcher$6;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$6;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->pN:Lcom/google/common/base/CharMatcher;

    .line 297
    new-instance v0, Lcom/google/common/base/CharMatcher$7;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$7;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->pO:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 690
    return-void
.end method

.method public static a(CC)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 478
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 479
    new-instance v0, Lcom/google/common/base/CharMatcher$12;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$12;-><init>(CC)V

    return-object v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 447
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 449
    new-instance v0, Lcom/google/common/base/CharMatcher$11;

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$11;-><init>([C)V

    :goto_0
    return-object v0

    .line 426
    :pswitch_0
    sget-object v0, Lcom/google/common/base/CharMatcher;->pO:Lcom/google/common/base/CharMatcher;

    goto :goto_0

    .line 428
    :pswitch_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->e(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    .line 430
    :pswitch_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 431
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 432
    new-instance v0, Lcom/google/common/base/CharMatcher$10;

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/CharMatcher$10;-><init>(CC)V

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static e(C)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter

    .prologue
    .line 368
    new-instance v0, Lcom/google/common/base/CharMatcher$8;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$8;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 779
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 780
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->e(II)I

    move v0, p2

    .line 781
    :goto_0
    if-ge v0, v1, :cond_1

    .line 782
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    :goto_1
    return v0

    .line 781
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 786
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 4
    .parameter

    .prologue
    .line 587
    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/common/base/CharMatcher;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public abstract a(C)Z
.end method

.method public a(Ljava/lang/Character;)Z
    .locals 1
    .parameter

    .prologue
    .line 1110
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->a(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
