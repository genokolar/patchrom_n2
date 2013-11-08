.class Lcom/android/internal/app/CellonAlertController$AlertParams$5;
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

.field final synthetic val$listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonAlertController$AlertParams;Lcom/android/internal/app/CellonAlertController$RecycleListView;Lcom/android/internal/app/CellonAlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->val$listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;

    iput-object p3, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->val$dialog:Lcom/android/internal/app/CellonAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->val$listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->val$dialog:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$600(Lcom/android/internal/app/CellonAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$5;->val$listView:Lcom/android/internal/app/CellonAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/android/internal/app/CellonAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
