import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemTransformer;

recipes.replaceAllOccurences(<ore:circuitBasic>, <gregtech:meta_item_1:32701>);
recipes.replaceAllOccurences(<ore:circuitAdvanced>, <gregtech:meta_item_1:32703>);
recipes.replaceAllOccurences(<ore:circuitElite>, <gregtech:meta_item_1:32705>);

val centrifuge = RecipeMap.getByName("centrifuge");
centrifuge.recipeBuilder()
	.inputs(<ic2:misc_resource:4> * 1)
	.outputs([<gregtech:meta_item_1:32627> * 3, <ic2:crafting:20> * 1])
	.duration(300)
	.EUt(5)
	.buildAndRegister();

//Copper
recipes.removeByRecipeName("ic2:330");
recipes.addShapeless("new-ic2-gregtech-cable-conversion-copper", <ic2:cable:0>.withTag({type: (0 as byte), insulation: (0 as byte)}) * 2, [<gregtech:cable_copper:0>]);

//Tin
recipes.removeByRecipeName("ic2:331");
recipes.addShapeless("new-ic2-gregtech-cable-conversion-tin", <ic2:cable:4>.withTag({type: (4 as byte), insulation: (0 as byte)}) * 3, [<gregtech:cable_tin:0>]);

//Gold
recipes.removeByRecipeName("ic2:333");
recipes.addShapeless("new-ic2-gregtech-cable-conversion-gold", <ic2:cable:2>.withTag({type: (2 as byte), insulation: (0 as byte)}) * 4, [<gregtech:cable_gold:0>]);

/*for oldRecipe in recipes.getRecipesFor(oreDict["circuitBasic"]) {
	var replacement as IItemStack;
	if (oldRecipe.resourceDomain == "ic2") {
		replacement = <ic2:crafting:1>;
	}
	else if (oldRecipe.resourceDomain == "mekanism") {
		replacement = <mekanism:controlcircuit:0>;
	}
	else {
		replacement = <gregtech:meta_item_1:32701>;
	}
	val oldIngredients = oldRecipe.ingredients1D as IIngredient[];
	var newIngredients = [null,null,null,null,null,null,null,null,null] as IIngredient[];
	var n = 0;
	for ingredient in oldIngredients {
		val oreDictEntry = oreDict["circuitBasic"] as IIngredient;
		if (oreDictEntry has ingredient) {
			newIngredients[n] = <ic2:crafting:1>;
		}
		else {
			newIngredients[n] = ingredient;
		}
		n = n + 1;
	}
	if (n == 1) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0]]);
	}
	else if (n == 2) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1]]);
	}
	else if (n == 3) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2]]);
	}
	else if (n == 4) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3]]);
	}
	else if (n == 5) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4]]);
	}
	else if (n == 6) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5]]);
	}
	else if (n == 7) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5], newIngredients[6]]);
	}
	else if (n == 8) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5], newIngredients[6], newIngredients[7]]);
	}
	else if (n == 9) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5], newIngredients[6], newIngredients[7], newIngredients[8]]);
	}
}*/

/*for oldRecipe in recipes.getRecipesFor(oreDict["circuitAdvanced"]) {
	var replacement as IItemStack;
	if (oldRecipe.resourceDomain == "ic2") {
		replacement = <ic2:crafting:2>;
	}
	else if (oldRecipe.resourceDomain == "mekanism") {
		replacement = <mekanism:controlcircuit:1>;
	}
	else {
		replacement = <gregtech:meta_item_1:32703>;
	}
	val oldIngredients = oldRecipe.ingredients1D as IIngredient[];
	var newIngredients as [null,null,null,null,null,null,null,null,null] IIngredient[];
	for ingredient in oldIngredients {
	val oreDictEntry = oreDict["ore:circuitAdvanced"] as IIngredient;
		if (oreDictEntry has ingredient) {
			newIngredients += <ic2:crafting:1>;
		}
		else {
			newIngredients += ingredient;
		}
	}
	if (oldRecipe.shaped) {
		recipes.removeShaped(oldRecipe.output, oldIngredients);
	}
	else {
		recipes.removeShapeless(oldRecipe.output, oldIngredients);
	}
	recipes.addShaped(oldRecipe.name, oldRecipe.output, newIngredients);
}*/