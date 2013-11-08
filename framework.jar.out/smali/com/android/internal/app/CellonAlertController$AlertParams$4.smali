.class Lcom/android/internal/app/CellonAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "CellonAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/CellonAlertController$AlertParams;->createListView(Lcom/android/internal/app/CellonAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/internal/app/CellonAlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonAlertController$AlertParams;Lcom/android/internal/app/CellonAlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/CellonAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const v5, 0x108044e

    const/4 v2, 0x0

    const v0, 0x108044d

    .local v0, resourceId:I
    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    const v1, 0x1020242

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/internal/app/CellonAlertController$AlertParams;->playIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v3, v3, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPosition:I

    iput v3, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOldPosition:I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput p3, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPosition:I

    const-string v1, "CellonAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick, before: position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOldPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCheckedItem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOldPosition:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v3, v3, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItem:I

    iput v3, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOldPosition:I

    :cond_0
    const-string v1, "CellonAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick, after: position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOldPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCheckedItem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFirstInit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-boolean v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCompletion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-boolean v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCompletion:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOldPosition:I

    if-ne p3, v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v3, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    const-string v1, "CellonAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick - mCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFirstInit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-boolean v4, v4, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-boolean v2, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    :cond_1
    :goto_0
    const-string v3, "CellonAlertController"

    if-ne v0, v5, :cond_7

    const-string v1, "play_indicator_stop"

    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    if-ne v0, v5, :cond_8

    move v1, v2

    :goto_2
    #setter for: Lcom/android/internal/app/CellonAlertController$AlertParams;->state:I
    invoke-static {v3, v1}, Lcom/android/internal/app/CellonAlertController$AlertParams;->access$802(Lcom/android/internal/app/CellonAlertController$AlertParams;I)I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->playIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->playIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/android/internal/app/CellonAlertController;->access$600(Lcom/android/internal/app/CellonAlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$600(Lcom/android/internal/app/CellonAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    return-void

    :cond_4
    const v0, 0x108044e

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCompletion:Z

    if-eqz v1, :cond_1

    const v0, 0x108044e

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-boolean v2, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCompletion:Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput v2, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCount:I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-boolean v2, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCompletion:Z

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-boolean v2, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->mFirstInit:Z

    goto :goto_0

    :cond_7
    const-string v1, "play_indicator_start"

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    goto :goto_2
.end method
