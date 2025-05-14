## Edit index.ts

```TypeScript
//
// All new and different code that was added for "Hello World"
// has been marked with the text "NEWLY ADDED" for seeing what is 
// different from the default generated code.
//
import { IInputs, IOutputs } from "./generated/ManifestTypes";

export class pcfHelloWorld implements ComponentFramework.StandardControl<IInputs, IOutputs> {
    /**
     * NEWLY ADDED
     * 
     * A private property to hold a reference to the container div
     * This is similar to creating a variable inside a canvas apps component
     * private means that this property is only accessible WITHIN this class
     */
    private _container: HTMLDivElement;

    /**
     * Empty constructor.
     */
    constructor() {
        // Empty
    }

    /**
     * Used to initialize the control instance. Controls can kick off remote server calls and other initialization actions here.
     * Data-set values are not initialized here, use updateView.
     * @param context The entire property bag available to control via Context Object; It contains values as set up by the customizer mapped to property names defined in the manifest, as well as utility functions.
     * @param notifyOutputChanged A callback method to alert the framework that the control has new outputs ready to be retrieved asynchronously.
     * @param state A piece of data that persists in one session for a single user. Can be set at any point in a controls life cycle by calling 'setControlState' in the Mode interface.
     * @param container If a control is marked control-type='standard', it will receive an empty div element within which it can render its content.
     */
    public init(
        context: ComponentFramework.Context<IInputs>,
        notifyOutputChanged: () => void,
        state: ComponentFramework.Dictionary,
        container: HTMLDivElement
    ): void {
        /**
         * NEWLY ADDED
         * 
         * Do you see "container" parameter being passed into this function?
         * This is the div element that the framework has created for us to use.
         * This is an HTMLDivElement, which is a reference to an HTML div.
         * Here, we set our internal variable _container to the div container.
         */
        this._container = container;

        //
        // NEWLY ADDED
        //
        // Create a "Node Object" here that is a div element
        //
        // `const` is used to declare variables whose bindings are immutable, 
        // meaning the variable identifier cannot be reassigned after its initial assignment
        //
        // Usage: Ideal for values that should remain constant throughout the program, 
        // such as configuration settings or fixed values.
        //
        // Best Practices: Prefer const: 
        // By default, use const for all variables. This makes your code more 
        // predictable and helps prevent accidental reassignments.
        //
        const helloDiv = document.createElement("div");
        //
        // innerText is a property of the HTML element that sets or 
        // gets the text content of the element.
        //
        helloDiv.innerText = "Hello, World!";

        //
        // NEWLY ADDED
        //
        // Append the div to the container
        // This is similar to using the `Collect` function in a canvas app component
        //
        this._container.appendChild(helloDiv);
    }

    /**
     * 
     * Called when any value in the property bag has changed. This includes field values, data-sets, global values such as container height and width, offline status, control metadata values such as label, visible, etc.
     * @param context The entire property bag available to control via Context Object; It contains values as set up by the customizer mapped to names defined in the manifest, as well as utility functions
     * 
     * NEWLY ADDED
     * 
     * This function is called when the control is to be updated.
     * It is called when any value in the property bag has changed.
     * We won't need this for a "Hello World" control, but it is here for you to see.
     * Since our "Hello, World!" text doesn't change, we leave it empty.
     * 
     * We should always `implement` this function, even if we don't use it.
     */
    public updateView(context: ComponentFramework.Context<IInputs>): void {
        // Add code to update control view
    }

    /**
     * It is called by the framework prior to a control receiving new data.
     * @returns an object based on nomenclature defined in manifest, expecting object[s] for property marked as "bound" or "output"
     * 
     * NEWLY ADDED
     * Return an empty object if your component doesn't output data
     */
    public getOutputs(): IOutputs {
        return {};
    }

    /**
     * Called when the control is to be removed from the DOM tree. Controls should use this call for cleanup.
     * i.e. cancelling any pending remote calls, removing listeners, etc.
     * 
     * NEWLY ADDED
     * For our simple component, no cleanup is necessary.
     */
    public destroy(): void {
        // Add code to cleanup control if necessary
    }
}
```

---

Back to [Home](../README.md)
