import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hung/ui/widgets/common/popmenu/strings/strings.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../common/app_colors.dart';
import '../../../utils/hero-icons-outline_icons.dart';
import 'window_breakpoint.dart';

enum TodoViewMenuDestination {
  showCompleted(SingleActivator(LogicalKeyboardKey.keyH, control: true)),
  hideCompleted(SingleActivator(LogicalKeyboardKey.keyH, control: true)),
  deleteCompleted,
  settings(SingleActivator(LogicalKeyboardKey.keyS, control: true)),
  feedback,
  export(SingleActivator(LogicalKeyboardKey.keyE, control: true, shift: true)),
  divider,
  update,
  deleteList,
  selectAll(SingleActivator(LogicalKeyboardKey.keyA, control: true)),
  editList;

  const TodoViewMenuDestination([this.shortcut]);
  final ShortcutActivator? shortcut;

  Widget icon([double size = 18]) {
    return switch (this) {
      showCompleted => Icon(Symbols.visibility,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)), // 加入颜色
      hideCompleted => Icon(Symbols.visibility_off,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      settings => Icon(Symbols.tune,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      feedback => Icon(Symbols.chat,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      deleteCompleted => Icon(Symbols.delete_forever,
          weight: 500,
          size: size,
          color: const Color.fromARGB(255, 85, 26, 26)),
      selectAll => Icon(Symbols.select_all,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      update => Icon(Symbols.download,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      editList => Icon(Symbols.edit,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      deleteList => Icon(Symbols.delete_forever,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      export => Icon(Symbols.export_notes,
          size: size, color: const Color.fromARGB(255, 85, 26, 26)),
      divider => SizedBox(height: size, width: size),
    };
  }

  static Iterable<TodoViewMenuDestination> get shortcuts sync* {
    for (final destination in values) {
      if (destination.shortcut != null) yield destination;
    }
  }
}

class TodoViewMenu extends StatelessWidget {
  const TodoViewMenu({
    required this.destinations,
    this.onSelected,
    this.icon,
    this.bottomSheetController,
    this.disabled,
    super.key,
  });

  final PopupMenuItemSelected<TodoViewMenuDestination>? onSelected;
  final List<TodoViewMenuDestination> destinations;

  final AnimationController? bottomSheetController;
  final Set<TodoViewMenuDestination>? disabled;

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Ink(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 219, 205),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              _showMenu(context); // 点击时弹出菜单
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Tooltip(
                message: '全部故事',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(170, 225, 96, 96), // 修改背景颜色
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Hero_icons_outline.ellipsis_vertical,
                          size: 18,
                          color: Color.fromARGB(255, 85, 26, 26), // 修改图标颜色
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showMenu(BuildContext context) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final Offset buttonPosition = button.localToGlobal(Offset.zero);
    final Size buttonSize = button.size;

    showMenu<TodoViewMenuDestination>(
      context: context,
      position: RelativeRect.fromLTRB(
        buttonPosition.dx,
        buttonPosition.dy + buttonSize.height,
        buttonPosition.dx + buttonSize.width,
        buttonPosition.dy,
      ),
      items: [
        for (final destination in destinations) buildItem(destination, context),
      ],
      elevation: 24.0, // 设置阴影
      shadowColor: smokeyBlack, // 设置阴影颜色
      surfaceTintColor: kcRiceYellowColor, // 设置表面着色
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // 设置菜单圆角
        side: const BorderSide(
          color: kcRiceYellowColor, // 设置边框颜色
          width: 2.0, // 设置边框宽度
        ),
      ),
    ).then((value) {
      if (value != null && onSelected != null) {
        onSelected!(value);
      }
    });
  }

  PopupMenuEntry<TodoViewMenuDestination> buildItem(
    TodoViewMenuDestination destination,
    BuildContext context,
  ) {
    if (destination == TodoViewMenuDestination.divider) {
      return const PopupMenuDivider();
    }

    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final text = theme.textTheme;
    final platform = theme.platform;

    final content = destinationText(context, destination);

    final showAndroidKeys = platform == TargetPlatform.android &&
        WindowBreakpoint.fromMediaQuery(MediaQuery.of(context))
            .isMediumOrExpanded;

    final showKeys = const {
          TargetPlatform.linux,
          TargetPlatform.windows,
          TargetPlatform.macOS
        }.contains(platform) ||
        showAndroidKeys;
    final keyText = shortcutText(context, destination.shortcut);

    final enabled = !(disabled?.contains(destination) ?? false);

    return PopupMenuItem(
      enabled: enabled,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 48,
      value: destination,
      child: ListTile(
        visualDensity: VisualDensity.compact,
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        title: Text(
          content!,
          style: text.labelLarge?.copyWith(
            color: enabled ? scheme.onSurface : Theme.of(context).disabledColor,
          ),
        ),
        trailing: showKeys && keyText != null
            ? Text(
                keyText,
                style: text.labelMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              )
            : null,
        leading: destination.icon(),
        minLeadingWidth: 18,
      ),
    );
  }

  String? shortcutText(BuildContext context, ShortcutActivator? shortcut) {
    final strings = MaterialLocalizations.of(context);

    if (shortcut == null) return null;

    if (shortcut is SingleActivator) {
      final keyLabel = shortcut.triggers.first.keyLabel;
      final parts = <String>[
        if (shortcut.meta) strings.keyboardKeyMeta,
        if (shortcut.control) strings.keyboardKeyControl,
        if (shortcut.alt) strings.keyboardKeyAlt,
        if (shortcut.shift) strings.keyboardKeyShift,
        keyLabel,
      ];

      return parts.join('+');
    }

    if (shortcut is CharacterActivator) {
      final keyLabel = shortcut.character;

      final parts = <String>[
        if (shortcut.meta) strings.keyboardKeyMeta,
        if (shortcut.control) strings.keyboardKeyControl,
        if (shortcut.alt) strings.keyboardKeyAlt,
        keyLabel,
      ];

      return parts.join('+');
    }

    return null;
  }

  String? destinationText(
      BuildContext context, TodoViewMenuDestination destination) {
    final strings = Strings.of(context);
    if (strings == null) {
      return 'Default Text'; // 或者你可以提供其他的默认文本
    }

    final materialStrings = MaterialLocalizations.of(context);
    return switch (destination) {
      TodoViewMenuDestination.showCompleted => strings.showCompletedTodos,
      TodoViewMenuDestination.hideCompleted => strings.popupMenuHideCompleted,
      TodoViewMenuDestination.deleteCompleted =>
        strings.popupMenuDeleteCompleted,
      TodoViewMenuDestination.settings => strings.settings,
      TodoViewMenuDestination.export => strings.export,
      TodoViewMenuDestination.feedback => strings.giveFeedback,
      TodoViewMenuDestination.update => strings.updateDoable,
      TodoViewMenuDestination.divider => '',
      TodoViewMenuDestination.deleteList => strings.deleteTodoList,
      TodoViewMenuDestination.editList => strings.editTodoList,
      TodoViewMenuDestination.selectAll => materialStrings.selectAllButtonLabel,
    };
  }
}
