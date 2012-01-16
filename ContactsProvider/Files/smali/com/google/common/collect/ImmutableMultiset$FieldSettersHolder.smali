.class Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"


# static fields
.field static final oE:Lcom/google/common/collect/Serialization$FieldSetter;

.field static final oF:Lcom/google/common/collect/Serialization$FieldSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 156
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->oE:Lcom/google/common/collect/Serialization$FieldSetter;

    .line 158
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->oF:Lcom/google/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
