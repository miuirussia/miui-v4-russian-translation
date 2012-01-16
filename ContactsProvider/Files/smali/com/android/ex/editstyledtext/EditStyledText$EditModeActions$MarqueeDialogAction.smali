.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3287
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected S()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3290
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3294
    :goto_0
    return v1

    .line 3293
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$MarqueeDialogAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->d(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->f(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    goto :goto_0
.end method
